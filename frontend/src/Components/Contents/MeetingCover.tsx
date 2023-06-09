import React from "react";
import { useNavigate } from "react-router-dom";
import styled from "styled-components";
import { MeetingInfo } from "../../Store/Types";

interface ImageProps {
  imageUrl: string;
}

export default function MeetingCover(props: MeetingInfo) {
  const navigate = useNavigate();

  return (
    <GroupImage
      imageUrl={props.imageUrl}
      onClick={() => {
        navigate(`/bookmeeting/${props.meetingId}`, {
          state: {
            title: props.title, 
            leaderUserName: props.leaderUserName,
            content: props.content,
          },
        });
      }}
    >
      <WhiteDiv>
        <Title>
          {props.title.length > 10
            ? props.title?.slice(0, 10) + "..."
            : props.title}
        </Title>
        <Bottom>
          <Author>{props.leaderUserName}</Author>
          <Participant>{props.commentCnt}개의 댓글</Participant>
        </Bottom>
      </WhiteDiv>
    </GroupImage>
  );
}

// styled component
const GroupImage = styled.div<ImageProps>`
  background-image: url(${(props: ImageProps) => props.imageUrl});
  min-width: 200px;
  height: 150px;
  background-size: cover;
  filter: drop-shadow(2px 5px 4px rgba(0, 0, 0, 0.25));
  border-radius: 3px;
  margin: 5px 15px 5px 5px;
`;

const WhiteDiv = styled.div`
  width: 200px;
  height: 60px;
  background-color: rgba(255, 255, 255, 0.7);
  border-radius: 0px 0px 3px 3px;
  bottom: 0;
  position: absolute;
`;

const Title = styled.div`
  font-weight: 600;
  font-size: 1rem;
  margin: 10px 5px 0px 10px;
`;

const Bottom = styled.div`
  display: flex;
  align-items: center;
  justify-content: space-between;
`;

const Author = styled.div`
  font-size: 0.9rem;
  color: #5c5649;
  margin: 0px 5px 0px 10px;
`;

const Participant = styled.div`
  color: #5c5649;
  font-size: 0.8rem;
  text-align: right;
  margin-right: 5px;
`;
